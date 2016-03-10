  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movzbw %bl, %dx                   #  1     0     4      OPC=movzbw_r16_r8   
  xorb %bl, %dh                     #  2     0x4   2      OPC=xorb_rh_r8      
  setbe %ch                         #  3     0x6   3      OPC=setbe_rh        
  xaddb %dh, %bl                    #  4     0x9   3      OPC=xaddb_r8_rh     
  callq .move_016_008_cx_r12b_r13b  #  5     0xc   5      OPC=callq_label     
  movswq %dx, %rcx                  #  6     0x11  4      OPC=movswq_r64_r16  
  callq .move_008_016_r12b_r13b_bx  #  7     0x15  5      OPC=callq_label     
  retq                              #  8     0x1a  1      OPC=retq            
                                                                              
.size target, .-target
