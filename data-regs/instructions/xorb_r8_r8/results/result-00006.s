  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                             #  Line  RIP   Bytes  Opcode             
.target:                           #        0     0      OPC=<label>        
  movb %cl, %bh                    #  1     0     2      OPC=movb_rh_r8     
  movzbl %bl, %edx                 #  2     0x2   3      OPC=movzbl_r32_r8  
  callq .move_032_016_edx_r8w_r9w  #  3     0x5   5      OPC=callq_label    
  movb %cl, %bl                    #  4     0xa   2      OPC=movb_r8_r8     
  xorw %dx, %bx                    #  5     0xc   3      OPC=xorw_r16_r16   
  xaddb %r9b, %bl                  #  6     0xf   4      OPC=xaddb_r8_r8    
  setne %dh                        #  7     0x13  3      OPC=setne_rh       
  rcll $0x1, %edx                  #  8     0x16  2      OPC=rcll_r32_one   
  retq                             #  9     0x18  1      OPC=retq           
                                                                            
.size target, .-target
