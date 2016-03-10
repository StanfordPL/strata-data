  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  callq .move_128_64_xmm1_xmm8_xmm9  #  1     0     5      OPC=callq_label      
  movq $0x0, %rbx                    #  2     0x5   10     OPC=movq_r64_imm64   
  orb %bh, %bl                       #  3     0xf   2      OPC=orb_r8_rh        
  movd %xmm8, %ecx                   #  4     0x11  5      OPC=movd_r32_xmm     
  cmovngl %ecx, %ebx                 #  5     0x16  3      OPC=cmovngl_r32_r32  
  retq                               #  6     0x19  1      OPC=retq             
                                                                                
.size target, .-target
