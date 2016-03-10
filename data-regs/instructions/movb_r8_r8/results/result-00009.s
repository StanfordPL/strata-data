  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode            
.target:                   #        0     0      OPC=<label>       
  xorw %bx, %bx            #  1     0     3      OPC=xorw_r16_r16  
  callq .set_szp_for_bl    #  2     0x3   5      OPC=callq_label   
  callq .read_pf_into_rbx  #  3     0x8   5      OPC=callq_label   
  xaddb %bl, %cl           #  4     0xd   3      OPC=xaddb_r8_r8   
  retq                     #  5     0x10  1      OPC=retq          
                                                                   
.size target, .-target
