  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vandps %xmm2, %xmm2, %xmm0  #  1     0     4      OPC=vandps_xmm_xmm_xmm  
  paddq %xmm0, %xmm3          #  2     0x4   4      OPC=paddq_xmm_xmm       
  xorl %r13d, %r13d           #  3     0x8   3      OPC=xorl_r32_r32        
  vmovd %r13d, %xmm11         #  4     0xb   5      OPC=vmovd_xmm_r32       
  vorpd %xmm3, %xmm11, %xmm1  #  5     0x10  4      OPC=vorpd_xmm_xmm_xmm   
  retq                        #  6     0x14  1      OPC=retq                
                                                                            
.size target, .-target
