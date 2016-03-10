  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                
.target:                               #        0     0      OPC=<label>           
  xorl %ebx, %ebx                      #  1     0     2      OPC=xorl_r32_r32      
  callq .move_128_64_xmm1_xmm10_xmm11  #  2     0x2   5      OPC=callq_label       
  pmovzxwq %xmm11, %xmm1               #  3     0x7   6      OPC=pmovzxwq_xmm_xmm  
  setnp %bl                            #  4     0xd   3      OPC=setnp_r8          
  callq .move_128_064_xmm1_r12_r13     #  5     0x10  5      OPC=callq_label       
  cmovgew %r13w, %bx                   #  6     0x15  5      OPC=cmovgew_r16_r16   
  retq                                 #  7     0x1a  1      OPC=retq              
                                                                                   
.size target, .-target
