  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                    #  Line  RIP   Bytes  Opcode                 
.target:                  #        0     0      OPC=<label>            
  vmovaps %xmm1, %xmm2    #  1     0     4      OPC=vmovaps_xmm_xmm    
  vmovshdup %ymm2, %ymm7  #  2     0x4   4      OPC=vmovshdup_ymm_ymm  
  pmovzxbq %xmm7, %xmm6   #  3     0x8   5      OPC=pmovzxbq_xmm_xmm   
  vmovq %xmm6, %rbx       #  4     0xd   5      OPC=vmovq_r64_xmm      
  retq                    #  5     0x12  1      OPC=retq               
                                                                       
.size target, .-target
