  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                 
.target:                               #        0     0      OPC=<label>            
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  vpmovzxbq %xmm1, %xmm0               #  2     0x5   5      OPC=vpmovzxbq_xmm_xmm  
  movmskpd %xmm0, %rbx                 #  3     0xa   4      OPC=movmskpd_r64_xmm   
  vmovd %xmm11, %r15d                  #  4     0xe   5      OPC=vmovd_r32_xmm      
  xaddw %bx, %r15w                     #  5     0x13  5      OPC=xaddw_r16_r16      
  retq                                 #  6     0x18  1      OPC=retq               
                                                                                    
.size target, .-target
