  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode            
.target:                                        #        0     0      OPC=<label>       
  xorq %rcx, %rcx                               #  1     0     3      OPC=xorq_r64_r64  
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  2     0x3   5      OPC=callq_label   
  callq .read_zf_into_rbx                       #  3     0x8   5      OPC=callq_label   
  xchgb %cl, %r12b                              #  4     0xd   3      OPC=xchgb_r8_r8   
  xchgb %bl, %cl                                #  5     0x10  2      OPC=xchgb_r8_r8   
  retq                                          #  6     0x12  1      OPC=retq          
                                                                                        
.size target, .-target
