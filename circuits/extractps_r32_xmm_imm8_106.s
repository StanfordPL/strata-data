  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  unpckhpd %xmm1, %xmm1       #  1     0     4      OPC=unpckhpd_xmm_xmm    
  vmaxss %xmm1, %xmm1, %xmm6  #  2     0x4   4      OPC=vmaxss_xmm_xmm_xmm  
  movd %xmm6, %edx            #  3     0x8   4      OPC=movd_r32_xmm        
  xorl %ebx, %ebx             #  4     0xc   2      OPC=xorl_r32_r32        
  cmovpel %edx, %ebx          #  5     0xe   3      OPC=cmovpel_r32_r32     
  retq                        #  6     0x11  1      OPC=retq                
                                                                            
.size target, .-target
