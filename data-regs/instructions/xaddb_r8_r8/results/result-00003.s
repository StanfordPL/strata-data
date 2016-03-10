  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  movsbl %cl, %edx                   #  1     0     3      OPC=movsbl_r32_r8    
  callq .move_064_032_rdx_r10d_r11d  #  2     0x3   5      OPC=callq_label      
  callq .move_032_064_r10d_r11d_rdx  #  3     0x8   5      OPC=callq_label      
  movsbq %bl, %rcx                   #  4     0xd   4      OPC=movsbq_r64_r8    
  xchgl %edx, %r10d                  #  5     0x11  3      OPC=xchgl_r32_r32    
  popcntq %rcx, %r14                 #  6     0x14  5      OPC=popcntq_r64_r64  
  adcb %r10b, %bl                    #  7     0x19  3      OPC=adcb_r8_r8       
  retq                               #  8     0x1c  1      OPC=retq             
                                                                                
.size target, .-target
