  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP  Bytes  Opcode              
.target:                                        #        0    0      OPC=<label>         
  maxps %xmm1, %xmm1                            #  1     0    3      OPC=maxps_xmm_xmm   
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  2     0x3  5      OPC=callq_label     
  movzwq %r13w, %rbx                            #  3     0x8  4      OPC=movzwq_r64_r16  
  retq                                          #  4     0xc  1      OPC=retq            
                                                                                         
.size target, .-target
