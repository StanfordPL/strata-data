  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label              
  vfmadd213pd %xmm6, %xmm1, %xmm2               #  2     0x5   5      OPC=vfmadd213pd_xmm_xmm_xmm  
  vfmadd231pd %xmm4, %xmm6, %xmm2               #  3     0xa   5      OPC=vfmadd231pd_xmm_xmm_xmm  
  punpckhqdq %xmm2, %xmm2                       #  4     0xf   4      OPC=punpckhqdq_xmm_xmm       
  movdqa %xmm2, %xmm1                           #  5     0x13  4      OPC=movdqa_xmm_xmm           
  retq                                          #  6     0x17  1      OPC=retq                     
                                                                                                   
.size target, .-target
