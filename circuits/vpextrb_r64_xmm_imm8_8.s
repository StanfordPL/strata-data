  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label        
  andnl %r10d, %r12d, %r13d                     #  2     0x5   5      OPC=andnl_r32_r32_r32  
  movb %r12b, %r13b                             #  3     0xa   3      OPC=movb_r8_r8         
  callq .read_cf_into_rbx                       #  4     0xd   5      OPC=callq_label        
  xaddb %bl, %r13b                              #  5     0x12  4      OPC=xaddb_r8_r8        
  retq                                          #  6     0x16  1      OPC=retq               
                                                                                             
.size target, .-target
