  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d    #  2     0x5   5      OPC=callq_label        
  vmovmskpd %xmm9, %rbx                           #  3     0xa   5      OPC=vmovmskpd_r64_xmm  
  xchgb %r11b, %bl                                #  4     0xf   3      OPC=xchgb_r8_r8        
  retq                                            #  5     0x12  1      OPC=retq               
                                                                                               
.size target, .-target
