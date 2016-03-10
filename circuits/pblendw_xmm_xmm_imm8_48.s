  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  movsldup %xmm2, %xmm3                           #  1     0     4      OPC=movsldup_xmm_xmm         
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label              
  vsqrtsd %xmm2, %xmm1, %xmm4                     #  3     0x9   4      OPC=vsqrtsd_xmm_xmm_xmm      
  movshdup %xmm4, %xmm8                           #  4     0xd   5      OPC=movshdup_xmm_xmm         
  vfmadd132ss %xmm4, %xmm8, %xmm3                 #  5     0x12  5      OPC=vfmadd132ss_xmm_xmm_xmm  
  movlhps %xmm10, %xmm1                           #  6     0x17  4      OPC=movlhps_xmm_xmm          
  punpckhdq %xmm8, %xmm3                          #  7     0x1b  5      OPC=punpckhdq_xmm_xmm        
  movlhps %xmm3, %xmm1                            #  8     0x20  3      OPC=movlhps_xmm_xmm          
  retq                                            #  9     0x23  1      OPC=retq                     
                                                                                                     
.size target, .-target
