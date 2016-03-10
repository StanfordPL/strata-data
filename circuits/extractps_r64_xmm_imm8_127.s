  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  vpmovsxwq %xmm1, %xmm12                       #  1     0     5      OPC=vpmovsxwq_xmm_xmm  
  movq %xmm12, %rbx                             #  2     0x5   5      OPC=movq_r64_xmm       
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  3     0xa   5      OPC=callq_label        
  xchgl %r13d, %ebx                             #  4     0xf   3      OPC=xchgl_r32_r32      
  retq                                          #  5     0x12  1      OPC=retq               
                                                                                             
.size target, .-target
