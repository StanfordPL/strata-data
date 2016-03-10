  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  decw %bx                        #  1     0     3      OPC=decw_r16        
  movq $0xffffffffffffffff, %r10  #  2     0x3   10     OPC=movq_r64_imm64  
  xorw %r10w, %bx                 #  3     0xd   4      OPC=xorw_r16_r16    
  adcw %bx, %r10w                 #  4     0x11  4      OPC=adcw_r16_r16    
  callq .set_szp_for_bx           #  5     0x15  5      OPC=callq_label     
  retq                            #  6     0x1a  1      OPC=retq            
                                                                            
.size target, .-target
