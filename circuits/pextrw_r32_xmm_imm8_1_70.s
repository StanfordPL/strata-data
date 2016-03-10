  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                        
.target:                             #        0     0      OPC=<label>                   
  vpmovzxdq %xmm1, %xmm5             #  1     0     5      OPC=vpmovzxdq_xmm_xmm         
  unpckhps %xmm5, %xmm1              #  2     0x5   3      OPC=unpckhps_xmm_xmm          
  vfmadd231ss %xmm1, %xmm5, %xmm1    #  3     0x8   5      OPC=vfmadd231ss_xmm_xmm_xmm   
  rcpps %xmm5, %xmm14                #  4     0xd   4      OPC=rcpps_xmm_xmm             
  vfnmadd132ss %xmm14, %xmm1, %xmm1  #  5     0x11  5      OPC=vfnmadd132ss_xmm_xmm_xmm  
  callq .move_128_064_xmm1_r10_r11   #  6     0x16  5      OPC=callq_label               
  movzwq %r11w, %rbx                 #  7     0x1b  4      OPC=movzwq_r64_r16            
  retq                               #  8     0x1f  1      OPC=retq                      
                                                                                         
.size target, .-target
