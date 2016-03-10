  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP  Bytes  Opcode             
.target:                            #        0    0      OPC=<label>        
  callq .move_128_064_xmm1_r10_r11  #  1     0    5      OPC=callq_label    
  xorq %rbx, %rbx                   #  2     0x5  3      OPC=xorq_r64_r64   
  shlb $0x1, %bl                    #  3     0x8  2      OPC=shlb_r8_one    
  xchgl %ebx, %r11d                 #  4     0xa  3      OPC=xchgl_r32_r32  
  retq                              #  5     0xd  1      OPC=retq           
                                                                            
.size target, .-target
