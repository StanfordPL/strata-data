  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                 
.target:                               #        0     0      OPC=<label>            
  xorq %rdi, %rdi                      #  1     0     3      OPC=xorq_r64_r64       
  callq .move_128_64_xmm1_xmm10_xmm11  #  2     0x3   5      OPC=callq_label        
  vpmovzxwq %xmm11, %xmm1              #  3     0x8   5      OPC=vpmovzxwq_xmm_xmm  
  callq .move_128_064_xmm1_r8_r9       #  4     0xd   5      OPC=callq_label        
  callq .read_sf_into_rbx              #  5     0x12  5      OPC=callq_label        
  orl %r9d, %ebx                       #  6     0x17  3      OPC=orl_r32_r32        
  retq                                 #  7     0x1a  1      OPC=retq               
                                                                                    
.size target, .-target
