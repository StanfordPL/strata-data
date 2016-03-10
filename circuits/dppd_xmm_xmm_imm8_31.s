  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label              
  vmovddup %xmm4, %xmm5                         #  2     0x5   4      OPC=vmovddup_xmm_xmm         
  movhlps %xmm4, %xmm5                          #  3     0x9   3      OPC=movhlps_xmm_xmm          
  vfmsub213sd %xmm5, %xmm1, %xmm2               #  4     0xc   5      OPC=vfmsub213sd_xmm_xmm_xmm  
  vfmadd231sd %xmm5, %xmm5, %xmm2               #  5     0x11  5      OPC=vfmadd231sd_xmm_xmm_xmm  
  movddup %xmm2, %xmm1                          #  6     0x16  4      OPC=movddup_xmm_xmm          
  retq                                          #  7     0x1a  1      OPC=retq                     
                                                                                                   
.size target, .-target
