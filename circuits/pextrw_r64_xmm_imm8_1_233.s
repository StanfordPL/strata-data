  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                 
.target:                               #        0     0      OPC=<label>            
  vpmovzxwq %xmm1, %ymm1               #  1     0     5      OPC=vpmovzxwq_ymm_xmm  
  callq .move_128_64_xmm1_xmm10_xmm11  #  2     0x5   5      OPC=callq_label        
  vmovd %xmm10, %eax                   #  3     0xa   4      OPC=vmovd_r32_xmm      
  subl %eax, %eax                      #  4     0xe   2      OPC=subl_r32_r32       
  movd %xmm11, %ebx                    #  5     0x10  5      OPC=movd_r32_xmm       
  orq %rax, %rbx                       #  6     0x15  3      OPC=orq_r64_r64        
  retq                                 #  7     0x18  1      OPC=retq               
                                                                                    
.size target, .-target
