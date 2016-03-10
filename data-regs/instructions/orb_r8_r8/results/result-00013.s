  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                #  Line  RIP   Bytes  Opcode              
.target:              #        0     0      OPC=<label>         
  movsbq %bl, %r13    #  1     0     4      OPC=movsbq_r64_r8   
  movsbl %cl, %r11d   #  2     0x4   4      OPC=movsbl_r32_r8   
  orw %r11w, %r13w    #  3     0x8   4      OPC=orw_r16_r16     
  movswl %r13w, %ebx  #  4     0xc   4      OPC=movswl_r32_r16  
  retq                #  5     0x10  1      OPC=retq            
                                                                
.size target, .-target
