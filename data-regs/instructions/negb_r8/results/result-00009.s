  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  movsbw %bl, %sp   #  1     0     4      OPC=movsbw_r16_r8   
  movzwq %sp, %rbx  #  2     0x4   4      OPC=movzwq_r64_r16  
  movswl %bx, %r8d  #  3     0x8   4      OPC=movswl_r32_r16  
  notw %r8w         #  4     0xc   4      OPC=notw_r16        
  negw %bx          #  5     0x10  3      OPC=negw_r16        
  incb %r8b         #  6     0x13  3      OPC=incb_r8         
  retq              #  7     0x16  1      OPC=retq            
                                                              
.size target, .-target
