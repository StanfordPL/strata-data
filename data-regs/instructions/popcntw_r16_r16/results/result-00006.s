  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  movq $0x2, %rbx                    #  1     0     10     OPC=movq_r64_imm64   
  callq .move_032_016_ebx_r10w_r11w  #  2     0xa   5      OPC=callq_label      
  xchgw %bx, %cx                     #  3     0xf   3      OPC=xchgw_r16_r16    
  callq .move_016_032_r10w_r11w_ecx  #  4     0x12  5      OPC=callq_label      
  xchgl %ebx, %ecx                   #  5     0x17  2      OPC=xchgl_r32_r32    
  popcntq %rcx, %rbx                 #  6     0x19  5      OPC=popcntq_r64_r64  
  retq                               #  7     0x1e  1      OPC=retq             
                                                                                
.size target, .-target
