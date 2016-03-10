  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                        
.target:                             #        0     0      OPC=<label>                   
  xorq %r8, %r8                      #  1     0     3      OPC=xorq_r64_r64              
  callq .move_128_64_xmm1_xmm8_xmm9  #  2     0x3   5      OPC=callq_label               
  vmovd %r8d, %xmm2                  #  3     0x8   5      OPC=vmovd_xmm_r32             
  pmovzxwq %xmm9, %xmm12             #  4     0xd   6      OPC=pmovzxwq_xmm_xmm          
  vfnmadd132ps %ymm2, %ymm2, %ymm2   #  5     0x13  5      OPC=vfnmadd132ps_ymm_ymm_ymm  
  unpckhpd %xmm2, %xmm12             #  6     0x18  5      OPC=unpckhpd_xmm_xmm          
  vmovq %xmm12, %rbx                 #  7     0x1d  5      OPC=vmovq_r64_xmm             
  retq                               #  8     0x22  1      OPC=retq                      
                                                                                         
.size target, .-target
