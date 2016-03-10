  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                
.target:                                        #        0     0      OPC=<label>           
  movddup %xmm2, %xmm1                          #  1     0     4      OPC=movddup_xmm_xmm   
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label       
  unpcklps %xmm7, %xmm2                         #  3     0x9   3      OPC=unpcklps_xmm_xmm  
  movsd %xmm2, %xmm1                            #  4     0xc   4      OPC=movsd_xmm_xmm     
  retq                                          #  5     0x10  1      OPC=retq              
                                                                                            
.size target, .-target
