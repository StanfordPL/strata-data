  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label              
  vmovupd %xmm5, %xmm11                         #  2     0x5   4      OPC=vmovupd_xmm_xmm          
  vfmadd231ps %xmm2, %xmm1, %xmm7               #  3     0x9   5      OPC=vfmadd231ps_xmm_xmm_xmm  
  vpunpckhdq %xmm7, %xmm11, %xmm0               #  4     0xe   4      OPC=vpunpckhdq_xmm_xmm_xmm   
  vunpcklps %xmm0, %xmm2, %xmm5                 #  5     0x12  4      OPC=vunpcklps_xmm_xmm_xmm    
  addsubps %xmm5, %xmm4                         #  6     0x16  4      OPC=addsubps_xmm_xmm         
  movshdup %xmm4, %xmm1                         #  7     0x1a  4      OPC=movshdup_xmm_xmm         
  retq                                          #  8     0x1e  1      OPC=retq                     
                                                                                                   
.size target, .-target
