  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  vmovshdup %xmm1, %xmm5  #  1     0    4      OPC=vmovshdup_xmm_xmm  
  movups %xmm5, %xmm6     #  2     0x4  3      OPC=movups_xmm_xmm     
  movd %xmm6, %ebx        #  3     0x7  4      OPC=movd_r32_xmm       
  retq                    #  4     0xb  1      OPC=retq               
                                                                      
.size target, .-target
