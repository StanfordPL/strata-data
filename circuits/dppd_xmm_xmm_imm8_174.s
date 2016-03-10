  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                
.target:                                          #        0     0      OPC=<label>           
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label       
  mulpd %xmm2, %xmm1                              #  2     0x5   4      OPC=mulpd_xmm_xmm     
  addsubpd %xmm9, %xmm1                           #  3     0x9   5      OPC=addsubpd_xmm_xmm  
  movhlps %xmm9, %xmm9                            #  4     0xe   4      OPC=movhlps_xmm_xmm   
  movsd %xmm9, %xmm1                              #  5     0x12  5      OPC=movsd_xmm_xmm     
  retq                                            #  6     0x17  1      OPC=retq              
                                                                                              
.size target, .-target
