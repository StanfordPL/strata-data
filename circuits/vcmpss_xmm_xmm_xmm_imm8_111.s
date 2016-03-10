  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                #  Line  RIP   Bytes  Opcode             
.target:              #        0     0      OPC=<label>        
  xorl %r9d, %r9d     #  1     0     3      OPC=xorl_r32_r32   
  decl %r9d           #  2     0x3   3      OPC=decl_r32       
  vmovq %r9, %xmm1    #  3     0x6   5      OPC=vmovq_xmm_r64  
  movsd %xmm1, %xmm1  #  4     0xb   4      OPC=movsd_xmm_xmm  
  orps %xmm2, %xmm1   #  5     0xf   3      OPC=orps_xmm_xmm   
  retq                #  6     0x12  1      OPC=retq           
                                                               
.size target, .-target
