  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                    #  Line  RIP   Bytes  Opcode                 
.target:                  #        0     0      OPC=<label>            
  movhlps %xmm1, %xmm1    #  1     0     3      OPC=movhlps_xmm_xmm    
  pmovzxwd %xmm1, %xmm0   #  2     0x3   5      OPC=pmovzxwd_xmm_xmm   
  vmovshdup %xmm0, %xmm0  #  3     0x8   4      OPC=vmovshdup_xmm_xmm  
  movd %xmm0, %ebx        #  4     0xc   4      OPC=movd_r32_xmm       
  retq                    #  5     0x10  1      OPC=retq               
                                                                       
.size target, .-target
