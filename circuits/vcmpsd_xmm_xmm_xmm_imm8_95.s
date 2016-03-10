  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  xorl %r13d, %r13d            #  1     0     3      OPC=xorl_r32_r32        
  notq %r13                    #  2     0x3   3      OPC=notq_r64            
  vmovq %r13, %xmm13           #  3     0x6   5      OPC=vmovq_xmm_r64       
  vminps %xmm2, %xmm2, %xmm3   #  4     0xb   4      OPC=vminps_xmm_xmm_xmm  
  vmovdqa %ymm3, %ymm12        #  5     0xf   4      OPC=vmovdqa_ymm_ymm     
  vorps %ymm13, %ymm12, %ymm1  #  6     0x13  5      OPC=vorps_ymm_ymm_ymm   
  retq                         #  7     0x18  1      OPC=retq                
                                                                             
.size target, .-target
