  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vxorps %xmm1, %xmm1, %xmm8  #  1     0     4      OPC=vxorps_xmm_xmm_xmm  
  cmovnlel %ecx, %ebx         #  2     0x4   3      OPC=cmovnlel_r32_r32    
  movq %xmm8, %xmm9           #  3     0x7   5      OPC=movq_xmm_xmm        
  vmovd %xmm9, %r9d           #  4     0xc   5      OPC=vmovd_r32_xmm       
  xorl %r9d, %ecx             #  5     0x11  3      OPC=xorl_r32_r32        
  cmovcl %ebx, %ebx           #  6     0x14  3      OPC=cmovcl_r32_r32      
  retq                        #  7     0x17  1      OPC=retq                
                                                                            
.size target, .-target
