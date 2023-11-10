package main

import (
	"fmt"

	"github.com/spf13/cobra"
)

var baseCmd = &cobra.Command{
	Use:           "splunk-object-converter",
	Short:         "Utility tool to migrate Splunk visualizations to Google Cloud Monitoring",
	SilenceErrors: true,
	SilenceUsage:  true,
	Run: func(cmd *cobra.Command, args []string) {
		fmt.Println("hello world")
	},
}

func main() {
	cobra.CheckErr(baseCmd.Execute())
}
