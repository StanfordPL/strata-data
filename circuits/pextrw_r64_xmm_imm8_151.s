  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label              
  vpmovzxwq %xmm7, %ymm2                        #  2     0x5   5      OPC=vpmovzxwq_ymm_xmm        
  vfmadd231sd %xmm7, %xmm4, %xmm2               #  3     0xa   5      OPC=vfmadd231sd_xmm_xmm_xmm  
  callq .move_128_064_xmm2_r8_r9                #  4     0xf   5      OPC=callq_label              
  movzwl %r9w, %ebx                             #  5     0x14  4      OPC=movzwl_r32_r16           
  retq                                          #  6     0x18  1      OPC=retq                     
                                                                                                   
.size target, .-target
