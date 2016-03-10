  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                 
.target:                             #        0     0      OPC=<label>            
  pmovzxwd %xmm1, %xmm13             #  1     0     6      OPC=pmovzxwd_xmm_xmm   
  vpmovsxdq %xmm13, %xmm3            #  2     0x6   5      OPC=vpmovsxdq_xmm_xmm  
  callq .move_128_064_xmm3_r12_r13   #  3     0xb   5      OPC=callq_label        
  callq .move_032_064_r12d_r13d_rbx  #  4     0x10  5      OPC=callq_label        
  xaddl %ebx, %r13d                  #  5     0x15  4      OPC=xaddl_r32_r32      
  retq                               #  6     0x19  1      OPC=retq               
                                                                                  
.size target, .-target
