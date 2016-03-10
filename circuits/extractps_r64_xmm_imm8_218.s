  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  movq $0x4, %rbx                   #  1     0     10     OPC=movq_r64_imm64   
  orb %bh, %bh                      #  2     0xa   2      OPC=orb_rh_rh        
  callq .move_128_064_xmm1_r10_r11  #  3     0xc   5      OPC=callq_label      
  cmovnal %r10d, %ebx               #  4     0x11  4      OPC=cmovnal_r32_r32  
  xchgl %ebx, %r11d                 #  5     0x15  3      OPC=xchgl_r32_r32    
  retq                              #  6     0x18  1      OPC=retq             
                                                                               
.size target, .-target
