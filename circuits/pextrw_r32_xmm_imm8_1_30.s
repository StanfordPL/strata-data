  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode             
.target:                                        #        0     0      OPC=<label>        
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label    
  movq %xmm7, %rbx                              #  2     0x5   5      OPC=movq_r64_xmm   
  movzbl %bl, %ecx                              #  3     0xa   3      OPC=movzbl_r32_r8  
  xorb %cl, %bl                                 #  4     0xd   2      OPC=xorb_r8_r8     
  xorb %bh, %ch                                 #  5     0xf   2      OPC=xorb_rh_rh     
  xchgl %ecx, %ebx                              #  6     0x11  2      OPC=xchgl_r32_r32  
  retq                                          #  7     0x13  1      OPC=retq           
                                                                                         
.size target, .-target
