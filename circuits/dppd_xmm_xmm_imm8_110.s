  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label              
  vfmsub231sd %xmm7, %xmm6, %xmm2               #  2     0x5   5      OPC=vfmsub231sd_xmm_xmm_xmm  
  mulpd %xmm2, %xmm1                            #  3     0xa   4      OPC=mulpd_xmm_xmm            
  addpd %xmm4, %xmm1                            #  4     0xe   4      OPC=addpd_xmm_xmm            
  movhlps %xmm6, %xmm1                          #  5     0x12  3      OPC=movhlps_xmm_xmm          
  retq                                          #  6     0x15  1      OPC=retq                     
                                                                                                   
.size target, .-target
