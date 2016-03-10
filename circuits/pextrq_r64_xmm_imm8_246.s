  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                    #  Line  RIP  Bytes  Opcode                
.target:                  #        0    0      OPC=<label>           
  vmovaps %xmm1, %xmm13   #  1     0    4      OPC=vmovaps_xmm_xmm   
  vmovddup %ymm13, %ymm3  #  2     0x4  5      OPC=vmovddup_ymm_ymm  
  movq %xmm3, %rbx        #  3     0x9  5      OPC=movq_r64_xmm      
  retq                    #  4     0xe  1      OPC=retq              
                                                                     
.size target, .-target
