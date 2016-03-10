  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  movzbq %cl, %rcx                   #  1     0     4      OPC=movzbq_r64_r8    
  movzbq %bl, %r12                   #  2     0x4   4      OPC=movzbq_r64_r8    
  movsbq %bl, %rdi                   #  3     0x8   4      OPC=movsbq_r64_r8    
  callq .move_032_016_ecx_r10w_r11w  #  4     0xc   5      OPC=callq_label      
  xorq %rbp, %rbp                    #  5     0x11  3      OPC=xorq_r64_r64     
  adcb %r10b, %bl                    #  6     0x14  3      OPC=adcb_r8_r8       
  xchgl %edi, %ecx                   #  7     0x17  2      OPC=xchgl_r32_r32    
  popcntw %r12w, %sp                 #  8     0x19  6      OPC=popcntw_r16_r16  
  adcb %r12b, %dil                   #  9     0x1f  3      OPC=adcb_r8_r8       
  retq                               #  10    0x22  1      OPC=retq             
                                                                                
.size target, .-target
