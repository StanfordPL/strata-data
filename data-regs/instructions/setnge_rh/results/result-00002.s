  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  callq .read_of_into_rbx  #  1     0     5      OPC=callq_label    
  callq .read_sf_into_rcx  #  2     0x5   5      OPC=callq_label    
  movsbq %cl, %r15         #  3     0xa   4      OPC=movsbq_r64_r8  
  movzbl %bl, %r8d         #  4     0xe   4      OPC=movzbl_r32_r8  
  xorw %r15w, %r8w         #  5     0x12  4      OPC=xorw_r16_r16   
  setne %ah                #  6     0x16  3      OPC=setne_rh       
  retq                     #  7     0x19  1      OPC=retq           
                                                                    
.size target, .-target
