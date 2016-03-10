  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  vpmovzxwq %xmm1, %ymm10  #  1     0     5      OPC=vpmovzxwq_ymm_xmm  
  vmovupd %ymm10, %ymm4    #  2     0x5   5      OPC=vmovupd_ymm_ymm    
  vmovd %xmm4, %ecx        #  3     0xa   4      OPC=vmovd_r32_xmm      
  movl %ecx, %edx          #  4     0xe   2      OPC=movl_r32_r32       
  movq %rdx, %rbx          #  5     0x10  3      OPC=movq_r64_r64       
  retq                     #  6     0x13  1      OPC=retq               
                                                                        
.size target, .-target
