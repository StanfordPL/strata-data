  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP   Bytes  Opcode              
.target:             #        0     0      OPC=<label>         
  setno %r9b         #  1     0     4      OPC=setno_r8        
  xaddb %r9b, %cl    #  2     0x4   4      OPC=xaddb_r8_r8     
  movzbq %r9b, %rdx  #  3     0x8   4      OPC=movzbq_r64_r8   
  xchgb %dh, %dl     #  4     0xc   2      OPC=xchgb_r8_rh     
  cmpxchgb %dh, %bh  #  5     0xe   3      OPC=cmpxchgb_rh_rh  
  retq               #  6     0x11  1      OPC=retq            
                                                               
.size target, .-target
