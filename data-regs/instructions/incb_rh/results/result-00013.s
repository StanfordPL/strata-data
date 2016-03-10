  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode            
.target:                   #        0     0      OPC=<label>       
  xorb %r12b, %r12b        #  1     0     3      OPC=xorb_r8_r8    
  callq .read_pf_into_rcx  #  2     0x3   5      OPC=callq_label   
  setnc %al                #  3     0x8   3      OPC=setnc_r8      
  callq .read_sf_into_rbx  #  4     0xb   5      OPC=callq_label   
  addw %bx, %ax            #  5     0x10  3      OPC=addw_r16_r16  
  xaddb %cl, %ah           #  6     0x13  3      OPC=xaddb_rh_r8   
  retq                     #  7     0x16  1      OPC=retq          
                                                                   
.size target, .-target
