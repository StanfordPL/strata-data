  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  stc                             #  1     0     1      OPC=stc             
  movq $0xfffffffffffffffe, %r10  #  2     0x1   10     OPC=movq_r64_imm64  
  decw %bx                        #  3     0xb   3      OPC=decw_r16        
  notw %bx                        #  4     0xe   3      OPC=notw_r16        
  adcw %bx, %r10w                 #  5     0x11  4      OPC=adcw_r16_r16    
  callq .set_szp_for_bx           #  6     0x15  5      OPC=callq_label     
  retq                            #  7     0x1a  1      OPC=retq            
                                                                            
.size target, .-target
