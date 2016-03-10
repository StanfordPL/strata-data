  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  setnge %r9b         #  1     0    4      OPC=setnge_r8        
  movsbq %r9b, %rdx   #  2     0x4  4      OPC=movsbq_r64_r8    
  addb %dl, %dh       #  3     0x8  2      OPC=addb_rh_r8       
  cmovpol %ecx, %ebx  #  4     0xa  3      OPC=cmovpol_r32_r32  
  retq                #  5     0xd  1      OPC=retq             
                                                                
.size target, .-target
