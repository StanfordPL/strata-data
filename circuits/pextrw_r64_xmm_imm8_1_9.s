  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                 
.target:                             #        0     0      OPC=<label>            
  vpmovzxwq %xmm1, %ymm3             #  1     0     5      OPC=vpmovzxwq_ymm_xmm  
  callq .move_128_64_xmm3_xmm8_xmm9  #  2     0x5   5      OPC=callq_label        
  vmovd %xmm9, %ebp                  #  3     0xa   4      OPC=vmovd_r32_xmm      
  xorl %ebx, %ebx                    #  4     0xe   2      OPC=xorl_r32_r32       
  xchgl %ebp, %ebx                   #  5     0x10  2      OPC=xchgl_r32_r32      
  retq                               #  6     0x12  1      OPC=retq               
                                                                                  
.size target, .-target
