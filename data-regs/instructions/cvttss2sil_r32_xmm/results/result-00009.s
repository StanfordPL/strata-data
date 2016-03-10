  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                      #  Line  RIP  Bytes  Opcode                  
.target:                    #        0    0      OPC=<label>             
  vmovsldup %xmm1, %xmm14   #  1     0    4      OPC=vmovsldup_xmm_xmm   
  vcvttps2dq %ymm14, %ymm5  #  2     0x4  5      OPC=vcvttps2dq_ymm_ymm  
  movd %xmm5, %ebx          #  3     0x9  4      OPC=movd_r32_xmm        
  retq                      #  4     0xd  1      OPC=retq                
                                                                         
.size target, .-target
