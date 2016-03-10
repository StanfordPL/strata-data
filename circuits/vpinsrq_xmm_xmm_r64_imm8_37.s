  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vmovq %rbx, %xmm6           #  1     0    5      OPC=vmovq_xmm_r64       
  vmovddup %ymm6, %ymm1       #  2     0x5  4      OPC=vmovddup_ymm_ymm    
  vmovsd %xmm2, %xmm1, %xmm1  #  3     0x9  4      OPC=vmovsd_xmm_xmm_xmm  
  retq                        #  4     0xd  1      OPC=retq                
                                                                           
.size target, .-target
