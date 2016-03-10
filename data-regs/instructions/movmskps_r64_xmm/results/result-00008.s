  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  vmovmskps %xmm1, %r14d  #  1     0    4      OPC=vmovmskps_r32_xmm  
  blsrl %r14d, %ebx       #  2     0x4  5      OPC=blsrl_r32_r32      
  cmovael %r14d, %ebx     #  3     0x9  4      OPC=cmovael_r32_r32    
  retq                    #  4     0xd  1      OPC=retq               
                                                                      
.size target, .-target
