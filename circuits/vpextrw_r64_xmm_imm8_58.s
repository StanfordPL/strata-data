  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                   
.target:                            #        0     0      OPC=<label>              
  pmovzxwd %xmm1, %xmm13            #  1     0     6      OPC=pmovzxwd_xmm_xmm     
  vsqrtsd %xmm13, %xmm13, %xmm1     #  2     0x6   5      OPC=vsqrtsd_xmm_xmm_xmm  
  callq .move_128_064_xmm1_r12_r13  #  3     0xb   5      OPC=callq_label          
  movzwl %r13w, %ebx                #  4     0x10  4      OPC=movzwl_r32_r16       
  retq                              #  5     0x14  1      OPC=retq                 
                                                                                   
.size target, .-target
