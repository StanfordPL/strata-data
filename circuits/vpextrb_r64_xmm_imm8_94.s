  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode               
.target:                              #        0     0      OPC=<label>          
  xorw %bx, %bx                       #  1     0     3      OPC=xorw_r16_r16     
  callq .move_byte_14_of_ymm1_to_r9b  #  2     0x3   5      OPC=callq_label      
  callq .read_pf_into_rbx             #  3     0x8   5      OPC=callq_label      
  cmovnll %ebx, %ebx                  #  4     0xd   3      OPC=cmovnll_r32_r32  
  movb %r9b, %bl                      #  5     0x10  3      OPC=movb_r8_r8       
  retq                                #  6     0x13  1      OPC=retq             
                                                                                 
.size target, .-target
