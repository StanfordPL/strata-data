  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP  Bytes  Opcode               
.target:                            #        0    0      OPC=<label>          
  callq .move_016_008_cx_r12b_r13b  #  1     0    5      OPC=callq_label      
  movb %r12b, %cl                   #  2     0x5  3      OPC=movb_r8_r8       
  cmovpol %ecx, %ebx                #  3     0x8  3      OPC=cmovpol_r32_r32  
  retq                              #  4     0xb  1      OPC=retq             
                                                                              
.size target, .-target
