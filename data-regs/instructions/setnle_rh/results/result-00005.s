  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode           
.target:                   #        0     0      OPC=<label>      
  setz %sil                #  1     0     4      OPC=setz_r8      
  setnge %bpl              #  2     0x4   4      OPC=setnge_r8    
  addb %sil, %bpl          #  3     0x8   3      OPC=addb_r8_r8   
  callq .read_zf_into_rcx  #  4     0xb   5      OPC=callq_label  
  movb %cl, %ah            #  5     0x10  2      OPC=movb_rh_r8   
  retq                     #  6     0x12  1      OPC=retq         
                                                                  
.size target, .-target
