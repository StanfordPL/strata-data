  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode           
.target:                            #        0     0      OPC=<label>      
  callq .move_128_064_xmm1_r12_r13  #  1     0     5      OPC=callq_label  
  sarb $0x1, %r13b                  #  2     0x5   3      OPC=sarb_r8_one  
  callq .read_zf_into_rbx           #  3     0x8   5      OPC=callq_label  
  xchgb %bl, %r12b                  #  4     0xd   3      OPC=xchgb_r8_r8  
  retq                              #  5     0x10  1      OPC=retq         
                                                                           
.size target, .-target
