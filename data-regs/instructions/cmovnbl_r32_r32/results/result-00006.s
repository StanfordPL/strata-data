  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode                
.target:                            #        0     0      OPC=<label>           
  cmc                               #  1     0     1      OPC=cmc               
  cmovnael %ecx, %ebx               #  2     0x1   3      OPC=cmovnael_r32_r32  
  callq .move_032_016_ebx_r8w_r9w   #  3     0x4   5      OPC=callq_label       
  xchgb %bl, %bl                    #  4     0x9   2      OPC=xchgb_r8_r8       
  callq .move_r9b_to_byte_2_of_rbx  #  5     0xb   5      OPC=callq_label       
  retq                              #  6     0x10  1      OPC=retq              
                                                                                
.size target, .-target
